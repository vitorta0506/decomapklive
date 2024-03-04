.class public Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserInfo"
.end annotation


# instance fields
.field private beInviteUserId:Ljava/lang/String;

.field private inviteUserId:Ljava/lang/String;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;->this$0:Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeInviteUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;->beInviteUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;->inviteUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setBeInviteUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;->beInviteUserId:Ljava/lang/String;

    return-void
.end method

.method public setInviteUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;->inviteUserId:Ljava/lang/String;

    return-void
.end method
