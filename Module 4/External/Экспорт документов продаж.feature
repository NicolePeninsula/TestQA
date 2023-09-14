﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт документов продаж

Сценарий: экспорт документов продаж

	// Справочник.RowIDs

	И я проверяю или создаю для справочника "RowIDs" объекты:
		| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'Description'                          | 'AgreementSales'                                                     | 'Company'                                                           | 'CurrencySales'                                                      | 'LegalNameSales'                                                    | 'PartnerSales'                                                     | 'PriceIncludeTaxSales' | 'Store'                                                          | 'Unit'                                                          | 'ItemKey'                                                          | 'Branch' | 'Basis'                                                                 | 'RowID'                                | 'ProcurementMethod' | 'StoreSender' | 'StoreReceiver' | 'TransactionTypeSC'                               | 'TransactionTypeGR'                                    | 'TransactionType' | 'Requester' | 'AgreementPurchases' | 'PartnerPurchases' | 'LegalNamePurchases' | 'PriceIncludeTaxPurchases' | 'CurrencyPurchases' |
		| 'e1cib/data/Catalog.RowIDs?ref=b2ec145afc56eb1a11ee530267ea0881' | 'False'        | 1      | 'e14c7de5-32d7-4957-8028-71b0a6bfdda9' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | 'e14c7de5-32d7-4957-8028-71b0a6bfdda9' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                | ''          | ''                   | ''                 | ''                   | 'False'                    | ''                  |
		| 'e1cib/data/Catalog.RowIDs?ref=b2ec145afc56eb1a11ee530267ea0897' | 'False'        | 2      | '4e4257c6-bc99-416f-9b82-7cedc6a605e0' | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6868' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2c' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'True'                 | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | ''       | 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | '4e4257c6-bc99-416f-9b82-7cedc6a605e0' | ''                  | ''            | ''              | 'Enum.ShipmentConfirmationTransactionTypes.Sales' | 'Enum.GoodsReceiptTransactionTypes.ReturnFromCustomer' | ''                | ''          | ''                   | ''                 | ''                   | 'False'                    | ''                  |

	// Документ.SalesInvoice

	И я проверяю или создаю для документа "SalesInvoice" объекты:
		| 'Ref'                                                                   | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'BasisDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'Manager' | 'ManagerSegment'                                                          | 'Partner'                                                          | 'PriceIncludeTax' | 'IgnoreAdvances' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | 'False'        | 1        | '14.09.2023 16:28:09' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | ''              | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2a' | ''        | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7955' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794b' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 4500             |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | 'False'        | 2        | '14.09.2023 16:28:32' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6868' | ''              | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2c' | ''        | 'e1cib/data/Catalog.PartnerSegments?ref=b762b13668d0905011eb7663e35d7956' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'True'            | 'False'          | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 6300             |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                   | 'TotalAmount' | 'NetAmount' | 'ItemKey'                                                          | 'Store'                                                          | 'OffersAmount' | 'Price' | 'Quantity' | 'TaxAmount' | 'Key'                                  | 'Unit'                                                          | 'PriceType'                                                          | 'SalesOrder' | 'DeliveryDate'       | 'Detail' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'UseShipmentConfirmation' |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | 4500          | 3750        | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' |                | 450     | 10         | 750         | 'e14c7de5-32d7-4957-8028-71b0a6bfdda9' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''           | '01.01.0001 0:00:00' | ''       | ''                 | ''            | ''                   | 'False'            | 10                   | 'True'                    |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | 6300          | 5250        | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' |                | 420     | 15         | 1050        | '4e4257c6-bc99-416f-9b82-7cedc6a605e0' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType'              | ''           | '01.01.0001 0:00:00' | ''       | ''                 | ''            | ''                   | 'False'            | 15                   | 'True'                    |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                   | 'Key'                                  | 'Tax'                                                           | 'Analytics' | 'TaxRate'                                                          | 'Amount' | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | 'e14c7de5-32d7-4957-8028-71b0a6bfdda9' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 750      | 'True'                 | 750            |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | '4e4257c6-bc99-416f-9b82-7cedc6a605e0' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 1050     | 'True'                 | 1050           |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                   | 'Key' | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 4500     | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 3865.5   | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 4500     | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 6300     | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 5411.7   | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 6300     | 'False'   |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | ''    | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "PaymentTerms":
		| 'Ref'                                                                   | 'Date'               | 'ProportionOfPayment' | 'DuePeriod' | 'Amount' | 'CalculationType'                          |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | '21.09.2023 0:00:00' | 100                   | 7           | 4500     | 'Enum.CalculationTypes.PostShipmentCredit' |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                   | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis' | 'CurrentStep' | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey' |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0896' | 'e14c7de5-32d7-4957-8028-71b0a6bfdda9' | 'e14c7de5-32d7-4957-8028-71b0a6bfdda9' | 10         | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=SC' | 'e1cib/data/Catalog.RowIDs?ref=b2ec145afc56eb1a11ee530267ea0881' | ''         |
		| 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | '4e4257c6-bc99-416f-9b82-7cedc6a605e0' | '4e4257c6-bc99-416f-9b82-7cedc6a605e0' | 15         | ''      | ''            | 'e1cib/data/Catalog.MovementRules?refName=SC' | 'e1cib/data/Catalog.RowIDs?ref=b2ec145afc56eb1a11ee530267ea0897' | ''         |

	// Документ.SalesReturn

	И я проверяю или создаю для документа "SalesReturn" объекты:
		| 'Ref'                                                                  | 'DeletionMark' | 'Number' | 'Date'                | 'Posted' | 'Agreement'                                                          | 'BaseDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'ManagerSegment' | 'Partner'                                                          | 'PriceIncludeTax' | 'DueAsAdvance' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=b2ec145afc56eb1a11ee530267ea0899' | 'False'        | 1        | '14.09.2023 16:28:50' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6868' | ''             | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2c' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | 'True'            | 'False'        | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 1680             |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                  | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                             | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'SalesReturnOrder' | 'SalesInvoice'                                                          | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'UseGoodsReceipt' | 'ReturnReason' |
		| 'e1cib/data/Document.SalesReturn?ref=b2ec145afc56eb1a11ee530267ea0899' | 'cb0deb42-0ce5-4fe7-8d0a-0af9ca90583f' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 1400        |                | 420     | 'e1cib/data/Catalog.PriceTypes?refName=ManualPriceType' | 4          | 280         | 1680          | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''                 | 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | 'False'            | 4                    | ''                 | ''            | ''                   | 'True'            | ''             |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                  | 'Key'                                  | 'Tax'                                                           | 'Amount' | 'Analytics' | 'TaxRate'                                                          | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=b2ec145afc56eb1a11ee530267ea0899' | 'cb0deb42-0ce5-4fe7-8d0a-0af9ca90583f' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 280      | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 280            |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                  | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'Key' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesReturn?ref=b2ec145afc56eb1a11ee530267ea0899' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 1680     | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=b2ec145afc56eb1a11ee530267ea0899' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 1443.12  | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=b2ec145afc56eb1a11ee530267ea0899' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 1680     | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=b2ec145afc56eb1a11ee530267ea0899' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                  | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis'                                                                 | 'CurrentStep'                                     | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey'                             |
		| 'e1cib/data/Document.SalesReturn?ref=b2ec145afc56eb1a11ee530267ea0899' | 'cb0deb42-0ce5-4fe7-8d0a-0af9ca90583f' | '4e4257c6-bc99-416f-9b82-7cedc6a605e0' | 4          | 'e1cib/data/Document.SalesInvoice?ref=b2ec145afc56eb1a11ee530267ea0898' | 'e1cib/data/Catalog.MovementRules?refName=SRO_SR' | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=b2ec145afc56eb1a11ee530267ea0897' | '4e4257c6-bc99-416f-9b82-7cedc6a605e0' |