
@feature_order_tracking
Feature: OrderTrackingSystem

Background: 
  Given the user is logged into the application

@validate_order_status
Scenario Outline: Validate that a logged-in user can see the status of each order
  When I navigate to the "My Orders" section from the main menu
  Then I observe the list of orders displayed on the screen
  And each order has a visible status indicator
  And the status reflects the current state of each order
  And the order statuses are updated in real-time

Examples:
  | <username> | <password> |
  | valid_user  | valid_pass  |

@view_order_details
Scenario Outline: Validate that a user can click on an order to view detailed tracking information
  When the user navigates to the "My Orders" section
  And the user clicks on the first order in the list
  And the user waits for the detailed tracking information to load
  Then the detailed view of the selected order is displayed
  And the tracking information loads without errors
  And all relevant tracking details are present and accurate
  And a back button is available and functional

Examples:
  |   |

  @real_time_order_status_update
  Scenario Outline: Validate that the order status updates in real-time without manual refresh
    Given the user navigates to the "My Orders" section
    And the user notes the status of an order
    When the status is changed in the backend
    And the user waits for a few moments without refreshing the page
    Then the order status should update automatically without a page refresh
    And the new status should be displayed correctly

    Examples:
      | order_status   | new_status |
      | Processing     | Shipped    |

  @view_multiple_orders
  Scenario Outline: Validate that a user can see the status of multiple orders on the orders page
    When the user navigates to the "My Orders" section
    Then the user should see a list of multiple orders displayed
    And each order should have a unique status indicator
    And all statuses should accurately reflect the current state of each order
    And the order statuses should refresh automatically without requiring a page reload

  Examples:
    |  |
    |  |

  @feature_order_tracking
  @validate_order_status_accessibility
  Scenario Outline: Validate Order Status Indicators for Screen Readers
    When the user navigates to the "My Orders" section
    And the user uses a screen reader to read the order status indicators
    Then the screen reader should read the order status indicators without issues
    And each status should be announced correctly by the screen reader
    And ARIA roles and labels should be present and accurate
    And the status indicators should be accessible via keyboard navigation

    Examples:
      |  |
      |  |

  @feature_order_tracking
  @validate_order_statuses
  Scenario Outline: Validate Order Statuses on Mobile Devices
    When I navigate to the "My Orders" section
    And I observe the layout of the orders list
    Then each order status should be clearly visible
    And the UI elements should be responsive
    And the user can scroll through the list without issues

  Examples:
    |   |
    |   |

  @verify_order_status_after_refresh
  Scenario Outline: Validate Order Status After Refresh
    Given the user navigates to the "My Orders" section
    And the user notes the status of an order
    When the user refreshes the page
    Then the order status remains accurate after the refresh
    And any backend changes are reflected in the displayed status

    Examples:
      | order_status |
      | Processing   |

  @feature_order_tracking
  @validate_canceled_orders_status
  Scenario Outline: Validate that canceled orders display the correct status
    When the user identifies an order that has been canceled
    Then the status of the canceled order should be displayed as "Canceled"
    And the status should be visually distinct from other statuses
    And the user should be able to access the order details

  Examples:
    | <username> | <password> |
    | validUser  | validPass  |

@validate_returned_order_status
Scenario Outline: Validate Returned Order Status
  When the user navigates to the "My Orders" section
  And the user identifies an order that has been returned
  Then the status of the returned order is displayed as "Returned"
  And the status is visually distinct from other statuses
  And the user can access the order details

Examples:
  | <username> | <password> |
  | validUser  | validPass  |

  @validate_order_status
  Scenario Outline: Validate that orders in transit display the correct status
    When the user navigates to the "My Orders" section
    And the user identifies an order that is currently in transit
    Then the status of the in-transit order is displayed as "In Transit"
    And the status is visually distinct from other statuses
    And the user can access the order details

    Examples:
      |   |
      |   |

  @validate_delivered_order_status
  Scenario Outline: Validate that delivered orders display the correct status
    When the user navigates to the "My Orders" section
    And the user identifies an order that has been delivered
    Then the status of the delivered order is displayed as "Delivered"
    And the status is visually distinct from other statuses
    And the user can access the order details without issues

  Examples:
    | <username> | <password> |
    | valid_user | valid_pass  |

@validate_pending_orders
Scenario Outline: Validate that pending orders display the correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order that is currently pending
  Then the status of the pending order should be displayed as "Pending"
  And the status should be visually distinct from other statuses
  And the user can access the order details without issues

Examples:
  | <username> | <password> |
  | valid_user | valid_pass  |

  @feature_order_tracking
  @validate_order_status
  Scenario Outline: Validate that orders with multiple items display the correct status for each item
    When the user navigates to the "My Orders" section
    And the user identifies an order that contains multiple items
    Then each item's status is displayed accurately
    And all statuses are visually distinct and correct
    And the user can access details for each item without issues

    Examples:
      | <username> | <password> |
      | valid_user | valid_pass |

@validate_order_status
Scenario Outline: Validate that orders with different shipping methods display the correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order with a specific shipping method <shipping_method>
  Then the status of the order is displayed correctly
  And the shipping method is displayed alongside the status
  And the user can access the order details

Examples:
  | shipping_method |
  | Express         |
  | Standard        |

@validate_order_discount_status
Scenario Outline: Validate order with discount displays correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order that received a discount
  Then the status of the order is displayed accurately
  And the discount information is displayed alongside the status
  And the user can access the order details without issues

Examples:
  | <username> | <password> |
  | valid_user | valid_pass |

  @validate_gift_wrapping_status
  Scenario Outline: Validate that orders with gift wrapping display the correct status
    When the user navigates to the "My Orders" section
    And the user identifies an order that includes gift wrapping
    Then the status of the order is displayed accurately
    And the gift wrapping information is displayed alongside the status
    And the user can access the order details

  Examples:
    |  |

@validate_order_status
Scenario Outline: Validate that orders with special instructions display the correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order that includes special instructions
  Then the status of the order is displayed correctly
  And the special instructions are displayed alongside the status
  And the user can access the order details

Examples:
  | <username> |
  | valid_user |

  @feature_order_tracking
  @validate_order_status
  Scenario Outline: Validate that orders with multiple delivery addresses display the correct status
    When the user navigates to the "My Orders" section
    And the user identifies an order that has multiple delivery addresses
    Then the status of the order is displayed correctly
    And the delivery address information is displayed alongside the status
    And the user can access the order details

  Examples:
    | <username> | <password> |
    | valid_user | valid_pass |

@verify_order_status
Scenario Outline: Validate that orders with different payment methods display the correct status
  When the user identifies an order that was paid using <payment_method>
  Then the status of the order should be displayed correctly
  And the payment method should be displayed alongside the status
  And the user can access the order details

Examples:
  | payment_method  |
  | Credit Card     |
  | PayPal          |
  | Bank Transfer    |

@validate_order_status_with_loyalty_points
Scenario Outline: Validate that orders with loyalty points applied display the correct status
  When the user identifies an order that had loyalty points applied
  Then the status of the order should be displayed correctly
  And the loyalty points information should be displayed alongside the status
  And the user can access the order details

Examples:
  | order_id |
  | 12345    |
  | 67890    |

@order_status_with_promo_code
Scenario Outline: Validate that orders with promotional codes applied display the correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order that had a promotional code applied
  Then the status of the order is displayed accurately
  And promotional code information is displayed alongside the status
  And the user can access the order details without issues

Examples:
  | <username> | <password> |
  | valid_user | valid_pass  |

  @validate_order_status
  Scenario Outline: Validate that orders with items in different conditions display the correct status
    When the user navigates to the "My Orders" section
    And the user identifies an order that contains items in different conditions
    Then the status of each item is displayed correctly
    And the conditions of the items are displayed alongside the status
    And the user can access details for each item

    Examples:
      | condition1 | condition2 |
      | new        | used       |

@validate_order_status
Scenario Outline: Validate that orders with items of different quantities display the correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order that contains items with different quantities
  Then each item's status is displayed accurately
  And quantities of the items are displayed alongside the status
  And the user can access details for each item without issues

Examples:
  | username | password |
  | user1    | pass123  |

  @validate_order_status
  Scenario Outline: Validate that orders with different shipping speeds display the correct status
    When the user navigates to the "My Orders" section
    And the user identifies an order with "<shipping_speed>" shipping speed
    Then the status of the order should be displayed correctly
    And the shipping speed information should be displayed alongside the status
    And the user can access the order details

    Examples:
      | shipping_speed |
      | Standard       |
      | Express        |

@validate_order_status
Scenario Outline: Validate that orders with different estimated delivery times display the correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order that has an estimated delivery time of <estimated_delivery_time>
  Then the status of the order is displayed accurately
  And the estimated delivery time information is displayed alongside the status
  And the user can access the order details without issues

Examples:
  | estimated_delivery_time |
  | 2 days                  |
  | 5 days                  |

@validate_order_status
Scenario Outline: Validate that orders with different tracking numbers display the correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order with tracking number "<tracking_number>"
  Then the status of the order is displayed accurately
  And the tracking number information is displayed alongside the status
  And the user can access the order details without issues

  Examples:
    | tracking_number |
    | TRACK12345      |
    | TRACK67890      |

@validate_order_status
Scenario Outline: Validate that orders with different customer notes display the correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order that has a specific customer note
  Then the status of the order should be displayed correctly
  And the customer note information should be displayed alongside the status
  And the user can access the order details

Examples:
  | customer_note       |
  | Note for Order 1    |
  | Note for Order 2    |

  @validate_order_status
  Scenario Outline: Validate that orders with items in different categories display the correct status
    When the user navigates to the "My Orders" section
    And the user identifies an order that contains items from different categories
    Then the status of each item is displayed correctly
    And the categories of the items are displayed alongside the status
    And the user can access details for each item

  Examples:
    |   |
    |   |

@validate_order_status
Scenario Outline: Validate that orders with items from different brands display the correct status
  Given the user identifies an order that contains items from different brands
  Then the status of each item should be displayed correctly
  And the brands of the items should be displayed alongside the status
  And the user can access details for each item

Examples:
  | order_id |
  | 12345    |

  @feature_order_tracking
  @validate_order_status
  Scenario Outline: Validate that orders with items of different weights display the correct status
    When the user navigates to the "My Orders" section
    And the user identifies an order that contains items of different weights
    Then the status of each item should be displayed correctly
    And the weights of the items should be displayed alongside the status
    And the user can access details for each item

  Examples:
    | <username> | <password> |
    | valid_user | valid_pass |

@validate_order_status
Scenario Outline: Validate that orders with items of different dimensions display the correct status
  When the user navigates to the "My Orders" section
  And the user identifies an order that contains items of different dimensions
  Then each item's status should be displayed accurately
  And the dimensions of the items should be displayed alongside the status
  And the user can access details for each item without issues

  Examples:
    | <username> | <password> |
    | valid_user | valid_pass |

@order_status_restriction
Scenario Outline: Verify Order Status Access as Logged-Out User
  When the user navigates to the "My Orders" section
  Then no order status information is displayed
  And accessing order details is not permitted
  And an appropriate error message is displayed
  And the user is redirected to the login page

Examples:
  | title                          | description                                                                 |
  | Order Tracking System          | Verify that a logged-out user cannot see the order status when navigating to the orders page. |

  @unauthorized_access
  Scenario Outline: Verify Unauthorized User Cannot Access Order Status
    When I enter "<email>"
    And I enter "<password>"
    Then the user fails to log in due to invalid credentials
    When the user navigates to the "My Orders" section
    Then no order status information is displayed
    When the user attempts to access the order details
    Then an appropriate error message is displayed
    And the user is redirected to the error page

    Examples:
      | email   | password       |
      | abc@    | wrongpassword  |

  @non_existent_order_access
  Scenario Outline: Verify Non-Existent Order Access
    Given the user is on the "My Orders" section
    When the user attempts to access an order using a non-existent order ID
    Then the system should display an appropriate error message
    And the user should remain on the orders page

  Examples:
    | order_id |
    | 123456   |

  @expired-tracking
  Scenario Outline: Verify that the system handles requests for orders with expired tracking information
    When the user navigates to the "My Orders" section
    And the user identifies an order with expired tracking information
    And the user attempts to view the tracking details
    Then the user should observe the response from the system
    And an appropriate error message is displayed
    Then the user remains on the orders page

    Examples:
      | <username> | <password> |
      | validUser  | validPass  |

  @incorrect-status
  Scenario Outline: Verify that the system handles requests for orders with incorrect status information
    When the user navigates to the "My Orders" section
    And the user identifies an order with incorrect status information
    And the user attempts to view the tracking details
    Then an appropriate error message is displayed
    And the user remains on the orders page

  Examples:
    | order_status          |
    | Shipped but not dispatched |

  @missing-order-details
  Scenario Outline: Verify system handles requests for orders with missing details
    When the user navigates to the "My Orders" section
    And the user identifies an order with missing details
    And the user attempts to view the tracking details
    Then the user should observe an appropriate error message
    And the user should remain on the orders page

  Examples:
    | order_id |
    | 12345    |

  @invalid-tracking
  Scenario Outline: Verify that the system handles requests for orders with invalid tracking numbers gracefully
    When the user navigates to the "My Orders" section
    And the user identifies an order with an invalid tracking number
    And the user attempts to view the tracking details
    Then the user should observe the system's response
    And the user should see an appropriate error message
    And the user should remain on the orders page

  Examples:
    | tracking_number |
    | invalid123     |

  @network-issue
  Scenario Outline: Verify that the system handles requests for orders when there are network issues
    Given the user navigates to the "My Orders" section
    When the user simulates a network issue
    And the user attempts to view the tracking details
    Then the system fails to access the tracking details
    And an appropriate error message is displayed
    And the user remains on the orders page

    Examples:
      | None |

  @server-error-handling
  Scenario Outline: Verify system handles requests for orders when there are server errors
    When the user navigates to the "My Orders" section
    And the server error is simulated
    And the user attempts to view the tracking details
    Then the user should see an appropriate error message displayed
    And the user remains on the orders page

    Examples:
      | Action                   |
      | Simulate server error    |

  @timeout_issue_handling
  Scenario Outline: Verify Order Tracking System Handles Timeout Issues
    When the user navigates to the "My Orders" section
    And the user simulates a timeout issue
    And the user attempts to view the tracking details
    Then the system should fail to access the tracking details
    And the user should see an error message "Request timed out, please try again"
    Then the user remains on the orders page

    Examples:
      | No input data required |

@permission_denied_order_view
Scenario Outline: Verify that the system handles requests for orders when the user does not have permission to view them
  When the user navigates to the "My Orders" section
  And the user attempts to view an order that they do not have permission to access
  Then the system should display an appropriate error message
  And the user should remain on the orders page

Examples:
  | <username> |
  | user_without_order_access |

  @invalid-input
  Scenario Outline: Verify that the system handles requests for orders with invalid input data
    Given the user navigates to the "My Orders" section
    When the user attempts to filter orders using "<filter_input>"
    Then an appropriate error message is displayed
    And the user remains on the orders page

    Examples:
      | filter_input |
      | !@#$%^&*    |

  @missing-required-fields
  Scenario Outline: Verify Order Submission with Missing Required Fields
    When the user attempts to submit an order with missing required fields
    Then an appropriate error message is displayed
    And the user remains on the orders page

  Examples:
    | missing_field |
    | field1       |
    | field2       |

  @maximum-orders-display
  Scenario Outline: Validate Maximum Number of Orders Displayed
    When the user navigates to the "My Orders" section
    And the user ensures that they have the maximum number of orders
    And the user observes the layout and performance of the orders list
    And the user verifies that all order statuses are displayed correctly
    And the user checks for any loading issues or errors
    Then the maximum number of orders is displayed without issues
    And no loading issues or errors occur during the display
    And the performance of the page remains acceptable

    Examples:
      | maximum_orders |
      | 1000           |

  @minimum-orders
  Scenario Outline: Validate Minimum Number of Orders on Orders Page
    Given the user navigates to the "My Orders" section
    And the user ensures that the minimum number of orders is displayed (0 orders)
    Then the layout and performance of the orders list should be acceptable
    And a message indicating no orders should be displayed
    And there should be no loading issues or errors

    Examples:
      | username | password  |
      | user1    | Pass123   |
      | admin1   | Admin321  |

@validate_order_statuses
Scenario Outline: Validate Order Status Display with Maximum Character Limits
  When the user navigates to the "My Orders" section
  Then the order statuses contain maximum character limits
  And the layout and performance of the orders list are acceptable
  And all order statuses are displayed correctly
  And there are no layout issues or truncation

Examples:
  | <username> | <password> |
  | valid_user  | valid_pass  |

@order_status_display
Scenario Outline: Validate Order Status Display with Special Characters
  When the user navigates to the "My Orders" section
  And the user ensures that the order statuses contain special characters
  And the user observes the layout and performance of the orders list
  Then all order statuses should be displayed correctly
  And there should be no layout issues or encoding problems

Examples:
  | Status with Special Characters |
  | Order #123                     |
  | Invoice $456                   |
  | Package %789                   |
  | Confirmation @001              |

  @long_estimated_delivery_time
  Scenario Outline: Validate Order Status Display for Long Estimated Delivery Times
    When the user navigates to the "My Orders" section
    Then the order statuses include long estimated delivery times
    And the user observes the layout and performance of the orders list
    And all order statuses are displayed correctly
    And there are no layout issues or truncation
    And the performance of the page remains acceptable

  Examples:
    | long_estimated_delivery_time |
    | 30+ days                    |

  @order_status_changes
  Scenario Outline: Validate Order Tracking System with Rapid Status Changes
    When the user navigates to the "My Orders" section
    And the user identifies an order that is undergoing rapid status changes
    And the user observes the layout and performance of the orders list
    Then all order statuses are displayed correctly during the changes
    And no loading issues or errors occur during the display
    Then the performance of the page remains acceptable

    Examples:
      | order_id |
      | 12345    |

  @concurrent_updates
  Scenario Outline: Validate order statuses with concurrent updates
    Given the user navigates to the "My Orders" section
    When the user simulates concurrent updates to an order status from another user
    Then the layout and performance of the orders list should be observed
    And all order statuses should be displayed correctly during the updates
    And there should be no loading issues or errors
    Then the performance of the page should remain acceptable

  Examples:
    | username | password |
    | user1    | pass123  |

  @large_dataset_orders
  Scenario Outline: Validate the System Handling of Large Order Datasets
    When the user navigates to the "My Orders" section
    And the user ensures that there is a large dataset of orders
    And the user observes the layout and performance of the orders list
    Then all order statuses should be displayed correctly
    And there should be no loading issues or errors
    And the performance of the page should remain acceptable

    Examples:
      | dataset_size |
      | 1000+        |

  @validate_time_zone_display
  Scenario Outline: Validate that the system can handle displaying orders with varying time zones correctly
    When the user navigates to the "My Orders" section
    Then the order statuses include varying time zones
    And the layout and performance of the orders list are acceptable
    Then all order statuses are displayed correctly with the appropriate time zone
    And there are no layout issues or confusion regarding time zones

    Examples:
      | timezone |
      | UTC      |
      | PST      |
      | EST      |

  @language_validation
  Scenario Outline: Validate Order Status Display in Different Languages
    When the user navigates to the "My Orders" section
    Then the user ensures that the order statuses include different languages
    And the user observes the layout and performance of the orders list
    And the user verifies that all order statuses are displayed correctly in the selected language
    And the user checks for any layout issues regarding language display
    Then there are no layout issues during the display
    And the performance of the page remains acceptable

    Examples:
      | Language  |
      | English   |
      | Spanish   |
      | French    |
