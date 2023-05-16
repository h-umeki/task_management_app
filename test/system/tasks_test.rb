require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "should create task" do
    visit tasks_url
    click_on "New task"

    fill_in "Detail", with: @task.detail
    fill_in "Expiry date", with: @task.expiry_date
    fill_in "Label", with: @task.label
    fill_in "Priority", with: @task.priority
    fill_in "Status", with: @task.status
    fill_in "Task comment", with: @task.task_comment
    fill_in "Task name", with: @task.task_name
    fill_in "User", with: @task.user_name
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "should update Task" do
    visit task_url(@task)
    click_on "Edit this task", match: :first

    fill_in "Detail", with: @task.detail
    fill_in "Expiry date", with: @task.expiry_date
    fill_in "Label", with: @task.label
    fill_in "Priority", with: @task.priority
    fill_in "Status", with: @task.status
    fill_in "Task comment", with: @task.task_comment
    fill_in "Task name", with: @task.task_name
    fill_in "User", with: @task.user_name
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "should destroy Task" do
    visit task_url(@task)
    click_on "Destroy this task", match: :first

    assert_text "Task was successfully destroyed"
  end
end
