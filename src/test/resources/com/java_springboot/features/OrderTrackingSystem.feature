
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

@validate_order_status
Scenario Outline: Validate that a logged-in user can see the status of each order
  When the user navigates to the "My Orders" section from the main menu
  Then the user should see the list of orders displayed on the screen
  And each order should have a visible status indicator
  And the status should reflect the current state of each order
  And the order statuses should be updated in real-time

Examples:
  | <username> | <password> |
  | valid_user  | valid_pass  |

@view_order_details
Scenario Outline: Validate that a user can click on an order to view detailed tracking information
  When the user navigates to the "My Orders" section
  And the user clicks on the first order in the list
  Then the detailed view of the selected order is displayed
  And the tracking information is shown, including shipping updates and estimated delivery date
  And a back button is present and functional

Examples:
  | <username> |
  | valid_user  |

  @real_time_order_status
  Scenario Outline: Validate that the order status updates in real-time without manual refresh
    When the user navigates to the "My Orders" section
    And the user notes the status of an order
    And the backend simulates a change in order status
    And the user waits for a few moments
    Then the user verifies that the order status has updated to reflect the change

    Examples:
      | order_status_initial | order_status_updated |
      | Processing           | Shipped              |

@validate_order_statuses
Scenario Outline: Validate that a user can see the status of multiple orders on the orders page
  When the user logs in to the application
  Then the user should be redirected to the dashboard
  When the user navigates to the "My Orders" section
  Then the user should see a list of orders displayed on the screen
  And each order should have a status indicator
  And the statuses should be different for each order
  And the order statuses should be updated in real-time

Examples:
  | Order Statuses       |
  | Processing           |
  | Shipped              |
  | Delivered            |

  @order-status-screen-reader
  Scenario Outline: Validate Order Status Indicators for Screen Readers
    When the user navigates to the "My Orders" section
    And the user uses a screen reader to read the order status indicators
    Then the screen reader should announce the status correctly
    And ARIA roles and labels should be present on the status indicators
    And the order status indicators should be navigable using keyboard shortcuts

  Examples:
    |   |
    |   |

@validate_canceled_orders
Scenario Outline: Validate that canceled orders display the correct status on the orders page
  When the user navigates to the "My Orders" section
  And the user identifies an order that has been canceled
  Then the status of the canceled order should be displayed as "Canceled"
  And the canceled order should be visually distinct from active orders
  And the user can click on the canceled order to view its details

Examples:
  | <username> | <password> |
  | valid_user  | valid_pass  |

@validate_returned_orders_status
Scenario Outline: Validate Returned Orders Display Correct Status
  When the user navigates to the "My Orders" section
  And the user identifies an order that has been returned
  Then the status of the returned order is displayed as "Returned"
  And the returned order is visually distinct from active orders
  And the user can still view the details of the returned order

Examples:
  | <username> | <password> |
  | valid_user  | valid_pass  |

@validate_multiple_item_status
Scenario Outline: Validate that orders with multiple items display the correct status for each item
  When the user navigates to the "My Orders" section
  And the user clicks on an order that contains multiple items
  Then each item displays its individual status
  And the statuses are accurate for each item
  And the user can view detailed tracking for each item

Examples:
  | item_status      |
  | Shipped          |
  | Processing       |

@validate_order_status_after_refresh
Scenario Outline: Validate that order statuses remain accurate after refreshing the page
  When the user navigates to the "My Orders" section
  And the user notes the status of an order
  And the user refreshes the page
  Then the user should see that the order status remains accurate after the refresh
  And the user should see that any updates made during the refresh are reflected correctly

Examples:
  | order_status   |
  | Processing     |

  @validate_order_status
  Scenario Outline: Validate order statuses with special characters
    When the user navigates to the "My Orders" section
    And the user identifies an order with special characters in its name
    Then the status of the order should be displayed correctly
    And the special characters do not affect the display of the status
    And the user can click on the order to view its details

  Examples:
    | order_name     |
    | Order #123!    |

@validate_order_status
Scenario Outline: Validate that order statuses are displayed correctly for orders with long names
  When the user navigates to the "My Orders" section
  And the user identifies an order with a long name "<order_name>"
  Then the status of the order should be displayed correctly
  And the long name should not affect the display of the status
  And the user can click on the order to view its details

Examples:
  | order_name                                              |
  | This is a very long order name that exceeds normal length |

@verify_order_status
Scenario Outline: Validate Order Status Display for Different Time Zones
  When the user navigates to the "My Orders" section
  And the user identifies an order that has a delivery time in a different time zone
  Then the status of the order is displayed correctly according to the user's time zone
  And the time zone conversion is accurate
  And the user can click on the order to view its details

Examples:
  | <username> | <password> |
  | valid_user | valid_pass |

  @order_status_validation
  Scenario Outline: Validate Order Statuses for Multiple Delivery Methods
    When the user navigates to the "My Orders" section
    And the user identifies an order that has multiple delivery methods
    Then the status of the order should be displayed correctly for each delivery method
    And each delivery method should show its individual status accurately
    And the statuses should reflect the current state of each delivery method
    And the user can view detailed tracking for each delivery method

    Examples:
      | delivery_method |
      | Standard        |
      | Express         |

@validate_order_status_discount
Scenario Outline: Validate that order statuses are displayed correctly for orders that received discounts
  When the user navigates to the "My Orders" section
  And the user identifies an order that received a discount
  Then the status of the order is displayed correctly
  And the discount does not affect the display of the status
  And the user can click on the order to view its details

Examples:
  | <username> | <password> |
  | valid_user  | valid_pass  |

  @feature_order_tracking
  @validate_order_status
  Scenario Outline: Validate Order Status for Multiple Payment Methods
    When the user navigates to the "My Orders" section
    And the user identifies an order that was paid using multiple payment methods
    Then the status of the order is displayed correctly
    And the payment methods do not affect the display of the status
    And the user can click on the order to view its details

  Examples:
    | payment_method_1 | payment_method_2 |
    | Credit Card      | PayPal           |

@validate_order_status
Scenario Outline: Validate order statuses for orders with gift wrapping
  When the user navigates to the "My Orders" section
  And the user identifies an order that includes gift wrapping
  Then the status of the order is displayed accurately
  And the gift wrapping option does not interfere with the display of the status
  And the user can click on the order to view its details without issues

Examples:
  | order_id |
  | 12345    |

@validate_order_status
Scenario Outline: Validate Order Status for Promotional Code
  When the user navigates to the "My Orders" section
  And the user identifies an order that used a promotional code
  Then the status of the order should be displayed correctly
  And the promotional code should not affect the display of the status
  And the user can click on the order to view its details

Examples:
  |  |
  |  |

@validate_order_status
Scenario Outline: Validate that order statuses are displayed correctly for orders shipped to multiple addresses
  When the user navigates to the "My Orders" section
  And the user identifies an order that was shipped to multiple addresses
  Then the status of the order is displayed correctly for each address
  And the shipping addresses do not affect the display of the status
  And the user can click on the order to view its details

Examples:
  | <username> | <password> |
  | valid_user  | valid_pass  |

@validate_order_status
Scenario Outline: Validate order statuses for different currency payments
  When the user navigates to the "My Orders" section
  And the user identifies an order that was paid in <currency>
  Then the status of the order is displayed correctly
  And the currency does not affect the display of the status
  And the user can click on the order to view its details

Examples:
  | currency |
  | USD     |
  | EUR     |
  | GBP     |

  @feature_order_tracking
  @validate_order_status
  Scenario Outline: Validate that order statuses are displayed correctly for orders with items in different conditions
    When the user navigates to the "My Orders" section
    And the user identifies an order that contains items in different conditions
    Then the status of the order is displayed correctly for each item condition
    And the item conditions do not affect the display of the status
    And the user can click on the order to view its details

  Examples:
    | order_condition |
    | new             |
    | used            |

@validate_order_status
Scenario Outline: Validate Order Status Display for Different Fulfillment Centers
  When the user navigates to the "My Orders" section
  And the user identifies an order fulfilled by different fulfillment centers
  Then the status of the order is displayed accurately for each fulfillment center
  And the fulfillment centers do not interfere with the display of the status
  And the user can click on the order to view its details

  Examples:
    |   |
    |   |

@order_status_validation
Scenario Outline: Validate Order Status Display for Different Estimated Delivery Times
  When the user navigates to the "My Orders" section
  And the user identifies an order with different estimated delivery times
  Then the status of the order should be displayed correctly
  And the estimated delivery times should not affect the display of the status
  And the user can click on the order to view its details

Examples:
  | <order_id> |
  | 12345      |
  | 67890      |

  @validate_order_status
  Scenario Outline: Validate order statuses for different shipping speeds
    When the user navigates to the "My Orders" section
    And the user identifies an order with "<shipping_speed>"
    Then the status of the order should be displayed correctly for "<shipping_speed>"
    And the shipping speeds do not affect the display of the status
    And the user can click on the order to view its details

    Examples:
      | shipping_speed |
      | Standard       |
      | Express        |

@validate_order_status
Scenario Outline: Validate that order statuses are displayed correctly for orders with different packaging types
  When the user navigates to the "My Orders" section
  And the user identifies an order with different packaging types
  Then the status of the order is displayed correctly
  And the packaging types do not affect the display of the status
  And the user can click on the order to view its details

Examples:
  | packaging_type |
  | box            |
  | envelope       |

@validate_order_status
Scenario Outline: Validate that order statuses are displayed correctly for orders with different return policies
  Given the user navigates to the "My Orders" section
  When the user identifies an order with different return policies
  Then the status of the order should be displayed accurately
  And the return policies should not interfere with the display of the status
  And the user can click on the order to view its details without issues

Examples:
  | order_id |
  | 12345    |

@unauthorized_access
Scenario Outline: Validate Unauthorized User Access to My Orders
  When the user attempts to navigate to the "My Orders" section
  Then the system should block navigation to the "My Orders" section
  And the system should respond with an error or redirect
  And the user should be redirected to the login page
  And an error message indicating unauthorized access should be displayed
  And no order statuses should be visible on the screen

  Examples:
    |  |
    |  |

  @no_orders_available
  Scenario Outline: Validate No Orders Available Message
    When the user navigates to the "My Orders" section
    Then the user should see a message indicating no orders are available
    And the user should not see any order statuses displayed
    And the user can navigate back to the main menu

  Examples:
    | No input data |

@network-issue
Scenario Outline: Validate Order Status Updates During Network Issues
  When the user navigates to the "My Orders" section
  And the user simulates a network failure
  And the user attempts to refresh the order statuses
  Then the system should display an error message indicating network issues
  And the user is not able to see updated order statuses

Examples:
  | credentials    |
  | valid_user     |

@session-expiration
Scenario Outline: Validate User is Logged Out After Session Expiration
  When the user navigates to the "My Orders" section
  And the user waits for the session to expire
  And the user attempts to refresh the order statuses
  Then the system fails to refresh order statuses
  And the user is redirected to the login page
  And an error message indicating session expiration is displayed

Examples:
  | username | password |
  | <username> | <password> |

@invalid-login
Scenario Outline: Validate that a user cannot log in with invalid credentials and see order statuses
  When I attempt to log in with "<email>" and "<password>"
  Then I observe the response from the system
  And I verify that the user is not logged in
  When I attempt to navigate to the "My Orders" section
  Then I check for an error message indicating invalid credentials
  And I ensure that no order statuses are displayed

  Examples:
    | email  | password       |
    | abc@   | wrongpassword  |

@insufficient-permissions
Scenario Outline: Validate that a user with insufficient permissions cannot see order statuses
  When the user attempts to navigate to the "My Orders" section
  Then the user should observe the response from the system
  And the user is redirected to an error page or home page
  And an error message indicating insufficient permissions is displayed
  And no order statuses are visible on the screen

  Examples:
    | <username> |
    | user_with_limited_permissions |

  @server_error_handling
  Scenario Outline: Validate Order Status Update During Server Error
    When I simulate a server error
    And I attempt to refresh the order statuses
    Then the system fails to refresh order statuses
    And an error message indicating server issues is displayed

  Examples:
    | None |

  @feature_order_tracking
  @expired_token
  Scenario Outline: Validate that a user with an expired token cannot see order statuses
    When I simulate an expired token
    And the user attempts to navigate to the "My Orders" section
    Then the system responds with an error or redirect
    And the user is redirected to the login page
    And no order statuses are visible on the screen

    Examples:
      |   |
      |   |

  @invalid-session
  Scenario Outline: Validate that a user with an invalid session cannot see order statuses
    When I simulate an invalid session
    And I attempt to navigate to the "My Orders" section
    Then the system should block navigation to "My Orders"
    And the user should be redirected to the login page
    Then no order statuses should be displayed

    Examples:
      | title                          | description                                                                 |
      | Order Tracking System          | Validate that a user with an invalid session cannot see order statuses.     |

  @session-timeout-validation
  Scenario Outline: Validate that a user with a session timeout cannot see order statuses
    When I simulate a session timeout
    And I attempt to navigate to the "My Orders" section
    Then the system should respond with an error or redirect
    And the user should be redirected to the login page
    And no order statuses should be visible on the screen

    Examples:
      | <session_timeout> |
      | valid             |

@unsupported_browser_access
Scenario Outline: Validate Order Status Visibility due to Browser Compatibility Issues
  When the user attempts to navigate to the "My Orders" section
  Then the navigation to the "My Orders" section should be blocked
  And the system should respond with an error message
  And an error message indicating compatibility issues should be displayed
  And no order statuses should be visible on the screen
  And the user should be advised to switch to a supported browser

  Examples:
    | No input data required |

  @js-disabled-order-status
  Scenario Outline: Validate Order Status Visibility with JavaScript Disabled
    When the user disables JavaScript in the browser settings
    And the user attempts to navigate to the "My Orders" section
    Then the user should observe a response from the system
    And the user should see an error message indicating JavaScript is required
    And no order statuses should be visible on the screen
    And the user should be advised to enable JavaScript in the browser

    Examples:
      | username | password |
      | user1    | pass1    |

@max-orders-display
Scenario Outline: Validate Maximum Number of Orders Display
  When the user navigates to the "My Orders" section
  Then the maximum number of orders should be displayed
  And each order status should be displayed correctly
  And the UI should remain responsive with the maximum load
  And the user can scroll through the list of orders without issues

Examples:
  |  |
  |  |

  @validate_minimum_orders
  Scenario Outline: Validate Minimum Number of Orders
    When the user navigates to the "My Orders" section
    Then the minimum number of orders is displayed
    And the order status is displayed correctly
    And the UI remains responsive with the minimum load
    And the user can view the details of the order without issues

  Examples:
    | order_count |
    | 1           |

  @feature_order_tracking
  @max-character-order
  Scenario Outline: Validate Order Status for Maximum Character Limit in Order Name
    When the user navigates to the "My Orders" section
    Then an order with the maximum character limit in its name is displayed
    And the order status is displayed correctly
    And the UI handles the long name without issues
    And the user can click on the order to view its details

  Examples:
    | order_name                       |
    | A very long order name that exceeds the usual character limit |

  @validate_order_status
  Scenario Outline: Validate order statuses with special characters
    When the user navigates to the "My Orders" section
    Then the order with special characters "<order_name>" is displayed correctly
    And the order status is displayed accurately
    And the UI handles the special characters without issues
    And the user can click on the order to view its details

    Examples:
      | order_name      |
      | Order #123!     |

@validate_max_items_order
Scenario Outline: Validate that the system can handle and display the status for orders with the maximum number of items
  When the user navigates to the "My Orders" section
  Then the order with the maximum number of items is displayed
  And the status of each item is displayed correctly
  And the UI remains responsive with the maximum load
  And the user can scroll through the list of items without issues

Examples:
  | <username> | <password> |
  | valid_user  | valid_pass  |

@validate_minimum_items
Scenario Outline: Validate Minimum Number of Items in Order
  When the user navigates to the "My Orders" section
  Then the order with the minimum number of items is displayed
  And the item status is displayed correctly
  And the UI remains responsive with the minimum load
  And the user can view the details of the item without issues

Examples:
  | <username> | <password> |
  | valid_user | valid_pass |

@order_status_validation
Scenario Outline: Validate Order Tracking with Different Item Conditions
  When I navigate to the "My Orders" section
  Then an order with items in different conditions should be displayed
  And the status of each item should be displayed correctly
  And the UI remains responsive with the different item conditions
  And the user can view the details of each item without issues

Examples:
  | Status |
  | new    |
  | used   |

@validate_order_fulfillment
Scenario Outline: Validate Order Tracking for Different Fulfillment Centers
  When the user navigates to the "My Orders" section
  Then the order fulfilled by different fulfillment centers is displayed correctly
  And the status of each fulfillment center is displayed accurately
  And the UI remains responsive with the different fulfillment centers
  And the user can view the details of each fulfillment center smoothly

  Examples:
    | Order ID | Fulfillment Center |
    | 12345    | Center A          |
    | 67890    | Center B          |

  @validate_order_status
  Scenario Outline: Order Tracking System
    When the user navigates to the "My Orders" section
    Then the order shipped using different methods should be displayed
    And the status of each shipping method should be displayed correctly
    And the UI should remain responsive with the different shipping methods
    And the user can view the details of each shipping method without issues

  Examples:
    |  |

@validate_order_status
Scenario Outline: Validate that the system can handle and display the status for orders with different delivery speeds
  When the user navigates to the "My Orders" section
  Then the order with <DeliverySpeed> delivery speed is displayed correctly
  And the status of the <DeliverySpeed> delivery speed is displayed accurately
  And the UI remains responsive and does not lag
  And the user can view the details of the <DeliverySpeed> delivery speed smoothly

Examples:
  | DeliverySpeed |
  | Standard      |
  | Express       |
  | Same Day      |

@validate_order_status
Scenario Outline: Validate Order Tracking System Status for Different Packaging Types
  When the user navigates to the "My Orders" section
  Then the order with different packaging types should be displayed
  And each packaging type status should be displayed correctly
  And the UI should remain responsive
  And the user can view the details of each packaging type without issues

Examples:
  | packaging_type |
  | Box            |
  | Envelope       |
  | Crate          |
