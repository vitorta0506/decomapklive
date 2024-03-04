.class public Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;,
        Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;
    }
.end annotation


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field public totalCount:I

.field public totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
