class Form::TagManagementCollection < Form::Base
  DEFAULT_ITEM_COUNT = 5
  attr_accessor :tag_managements

  def initialize(attributes = {})
    super attributes
    self.tag_managements = DEFAULT_ITEM_COUNT.times.map { Form::TagManagement.new } unless tag_managements.present?
  end

  def tag_managements_attributes=(attributes)
    self.tag_managements = attributes.map do |_, tag_managements_attributes|
      Form::TagManagement.new(tag_managements_attributes)
    end
  end

  def valid?
    valid_tag_managements = target_tag_managements.map(&:valid?).all?
    super && valid_tag_managements
  end

  def save
    return false unless valid?
    TagManagement.transaction { target_tag_managements.each(&:save!) }
    true
  end

  def target_tag_managements
    self.tag_managements.select{ |v| value_to_boolean(v.register) }
  end
end
