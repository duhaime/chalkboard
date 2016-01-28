require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { author_dates: @book.author_dates, author_name: @book.author_name, author_titles_etc: @book.author_titles_etc, bibliographic_citations: @book.bibliographic_citations, continuation_of_title: @book.continuation_of_title, corporate_author: @book.corporate_author, corporate_author_specific: @book.corporate_author_specific, estc_cit_number: @book.estc_cit_number, format: @book.format, illustrations: @book.illustrations, imprint: @book.imprint, imprint_date: @book.imprint_date, main_title: @book.main_title, pagination: @book.pagination, pub_year: @book.pub_year, publication_place: @book.publication_place }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { author_dates: @book.author_dates, author_name: @book.author_name, author_titles_etc: @book.author_titles_etc, bibliographic_citations: @book.bibliographic_citations, continuation_of_title: @book.continuation_of_title, corporate_author: @book.corporate_author, corporate_author_specific: @book.corporate_author_specific, estc_cit_number: @book.estc_cit_number, format: @book.format, illustrations: @book.illustrations, imprint: @book.imprint, imprint_date: @book.imprint_date, main_title: @book.main_title, pagination: @book.pagination, pub_year: @book.pub_year, publication_place: @book.publication_place }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
