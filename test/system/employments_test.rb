# frozen_string_literal: true

require 'application_system_test_case'

class EmploymentsTest < ApplicationSystemTestCase
  setup do
    @employment = employments(:one)
  end

  test 'visiting the index' do
    visit employments_url
    assert_selector 'h1', text: 'Employments'
  end

  test 'should create employment' do
    visit employments_url
    click_on 'New employment'

    fill_in 'Date employment ended', with: @employment.date_employment_ended
    fill_in 'Date started', with: @employment.date_started
    fill_in 'Employer', with: @employment.employer
    click_on 'Create Employment'

    assert_text 'Employment was successfully created'
    click_on 'Back'
  end

  test 'should update Employment' do
    visit employment_url(@employment)
    click_on 'Edit this employment', match: :first

    fill_in 'Date employment ended', with: @employment.date_employment_ended
    fill_in 'Date started', with: @employment.date_started
    fill_in 'Employer', with: @employment.employer
    click_on 'Update Employment'

    assert_text 'Employment was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Employment' do
    visit employment_url(@employment)
    click_on 'Destroy this employment', match: :first

    assert_text 'Employment was successfully destroyed'
  end
end
