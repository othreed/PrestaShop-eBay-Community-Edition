{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2016 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<?xml version="1.0" encoding="utf-8"?>
<CompleteSaleRequest xmlns="urn:ebay:apis:eBLBaseComponents">
  <OrderID>{$id_order_ref|escape:'htmlall':'UTF-8'}</OrderID>
  {if isset($tracking_number)}
      <Shipment>
        <ShipmentTrackingDetails>
          <ShipmentTrackingNumber>{$tracking_number|escape:'htmlall':'UTF-8'}</ShipmentTrackingNumber>
          <ShippingCarrierUsed>{$carrier_name|escape:'htmlall':'UTF-8'}</ShippingCarrierUsed>
        </ShipmentTrackingDetails>
      </Shipment>
  {else}
      <Shipped>true</Shipped>
  {/if}
  <ErrorLanguage>{$error_language|escape:'htmlall':'UTF-8'}</ErrorLanguage>
  <RequesterCredentials>
      <eBayAuthToken>{$ebay_auth_token|escape:'htmlall':'UTF-8'}</eBayAuthToken>
  </RequesterCredentials>
  <WarningLevel>High</WarningLevel>  
</CompleteSaleRequest>
