//
//  ESEpochDatePropertyMap.m
//	
//  Created by Doug Russell
//  Copyright (c) 2011 Doug Russell. All rights reserved.
//  
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//  
//  http://www.apache.org/licenses/LICENSE-2.0
//  
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//  

#import "ESEpochDatePropertyMap.h"

@implementation ESEpochDatePropertyMap

+ (id)newPropertyMapWithInputKey:(NSString *)inputKey outputKey:(NSString *)outputKey
{
	return [[[self class] alloc] initWithInputKey:inputKey outputKey:outputKey];
}

- (id)initWithInputKey:(NSString *)inputKey outputKey:(NSString *)outputKey
{
	self = [super initWithInputKey:inputKey 
						 outputKey:outputKey 
					transformBlock:^id (id<ESObject> object, id inputValue) {
						return [NSDate dateWithTimeIntervalSince1970:[inputValue doubleValue]];
					}];
	if (self)
	{
		self.inverseTransformBlock = ^id (id<ESObject> object, id inputValue) {
			NSTimeInterval timeIntervalSince1970 = [inputValue timeIntervalSince1970];
			return [NSNumber numberWithDouble:timeIntervalSince1970];
		};
	}
	return self;
}

@end
