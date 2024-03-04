.class public Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;,
        Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$VideoInfoItemData;
    }
.end annotation


# instance fields
.field public friendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$GroupInfoItemData;",
            ">;"
        }
    .end annotation
.end field

.field public liveImg:Ljava/lang/String;

.field public videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageVideoFriendGroupData$VideoInfoItemData;",
            ">;"
        }
    .end annotation
.end field

.field public videoNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
