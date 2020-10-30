require 'rails_helper'


describe StudentsController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new student" do
        expect{
          # student = Student.create(first_name: "Bill", last_name: "Smith")
          post :create, params: { :student => { :first_name => "Bill", :last_name => "Smith" } }
        }.to change(Student,:count).by(1)
      end

      it "redirects to the new student" do
        # student = Student.create(first_name: "Bill", last_name: "Smith")
        post :create, params: { :student => { :first_name => "Bill", :last_name => "Smith" } }
        expect(response).to redirect_to Student.last
      end
    end
  end

end
