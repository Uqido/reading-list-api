module ReadingList
  class Base < Grape::API
    mount ReadingList::V1::Articles

    add_swagger_documentation(
        api_version: 'v1',
        hide_documentation_path: true,
        mount_path: '/api/v1/swagger_doc',
        hide_format: true,
        info: {
          title: 'Reading List API\'s',
        }
    )
  end
end