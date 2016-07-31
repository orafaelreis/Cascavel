//
//  Wireframe.h
//  ShoppingListViper
//
//  Created by Rafael Reis (@orafaelreis) on 07/09/15.
//  licensed under MIT license
//

#import "BaseWireframe.h"
#import "Constants.h"

@interface Wireframe : BaseWireframe

+ (void) openAddItemFromController: (id) controller withParams:(NSDictionary*) params;

@end
