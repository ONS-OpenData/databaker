Feature: Select cells based on their properties
    I want to be able to select cells from a table based on the properties of those cells

    # --------------
    # XLS Properties

    Scenario: Select bold cells from file type xls
    Given we load an xls file named "bakingtestdataset.xls"
    And select the sheet "Sheet1"
    And we define cell selections as
      | key                       | value                           |  
      | bold_selection            | tab.excel_ref('A').is_bold()    |
    Then the selection for "bold_selection" should be equal to
    """
    ['Test Title', 'Year']
    """

    Scenario: Select underlined cells from file type xls
    Given we load an xls file named "bakingtestdataset.xls"
    And select the sheet "Sheet1"
    And we define cell selections as
      | key                         | value                   |  
      | underline_selection         | tab.is_underline()      |
    Then the selection for "underline_selection" should be equal to
    """
    ['Eng County 1', 'Eng County 2', 'Eng County 3', 'Eng County 4', 'Eng County 5']
    """

    Scenario: Select italic cells from file type xls
    Given we load an xls file named "bakingtestdataset.xls"
    And select the sheet "Sheet1"
    And we define cell selections as
      | key                       | value            |  
      | italic_selection          | tab.is_italic()  |
    Then the selection for "italic_selection" should be equal to
    """
    ['Sco County 1', 'Sco County 2', 'Sco County 3', 'Sco County 4', 'Sco County 5']
    """

    
    # ---------------
    # XLSX Properties

    Scenario: Select bold cells from file type xlsx
    Given we load an xls file named "bakingtestdataset.xlsx"
    And select the sheet "Sheet1"
    And we define cell selections as
      | key                       | value                           |  
      | bold_selection            | tab.excel_ref('A').is_bold()    |
    Then the selection for "bold_selection" should be equal to
    """
    ['Test Title', 'Year']
    """

    Scenario: Select underlined cells from file type xlsx
    Given we load an xls file named "bakingtestdataset.xlsx"
    And select the sheet "Sheet1"
    And we define cell selections as
      | key                         | value                   |  
      | underline_selection         | tab.is_underline()      |
    Then the selection for "underline_selection" should be equal to
    """
    ['Eng County 1', 'Eng County 2', 'Eng County 3', 'Eng County 4', 'Eng County 5']
    """

    Scenario: Select italic cells from file type xlsx
    Given we load an xls file named "bakingtestdataset.xlsx"
    And select the sheet "Sheet1"
    And we define cell selections as
      | key                       | value            |  
      | italic_selection          | tab.is_italic()  |
    Then the selection for "italic_selection" should be equal to
    """
    ['Sco County 1', 'Sco County 2', 'Sco County 3', 'Sco County 4', 'Sco County 5']
    """
