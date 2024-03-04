.class public Lcom/tencent/imsdk/message/GroupMessageReadMembers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isFinish:Z

.field private nextSeq:J

.field private readMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private unreadMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->readMembers:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->unreadMembers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getNextSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->nextSeq:J

    return-wide v0
.end method

.method public getReadMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->readMembers:Ljava/util/List;

    return-object v0
.end method

.method public getUnreadMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->unreadMembers:Ljava/util/List;

    return-object v0
.end method

.method public isFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/message/GroupMessageReadMembers;->isFinish:Z

    return v0
.end method
