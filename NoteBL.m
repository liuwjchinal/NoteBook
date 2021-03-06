//
//  NoteBL.m
//  NoteBook
//
//  Created by 畅通 on 14-10-15.
//  Copyright (c) 2014年 tom. All rights reserved.
//

#import "NoteBL.h"


@implementation NoteBL
//插入Note方法
-(NSMutableArray*) createNote:(Note*)model
{
    NoteDAO *dao = [NoteDAO sharedManager];
    [dao create:model];
    
    return [dao findAll];
}

//删除Note方法
-(NSMutableArray*) remove:(Note*)model
{
    NoteDAO *dao = [NoteDAO sharedManager];
    [dao remove:model];
    
    return [dao findAll];
}

//查询所用数据方法
-(NSMutableArray*) findAll
{
    NoteDAO *dao = [NoteDAO sharedManager];
    return [dao findAll];
}



-(NSMutableArray*) findAllCell{
    NoteDAO *dao = [NoteDAO sharedManager];
    return [dao findAllCell];
}


//插入Cell方法
-(NSMutableArray*) createCell:(NoteCellTableViewCell*)modelCell{
 NoteDAO *dao = [NoteDAO sharedManager];
    [dao createCell:modelCell];
    return [dao findAllCell];
}

//删除Note方法
-(NSMutableArray*) removeCell:(NoteCellTableViewCell*)modelCell{
 NoteDAO *dao = [NoteDAO sharedManager];
    [dao removeCell:modelCell];
    return [dao findAllCell];
}

-(long long)getNoteID{
 NoteDAO *dao = [NoteDAO sharedManager];
    return [dao getNoteID];
}
@end
