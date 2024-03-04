.class public Lcom/guochao/faceshow/aaspring/beans/NotificationItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/guochao/faceshow/aaspring/beans/NotificationItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_AT_ME:I = 0x9

.field public static final TYPE_COMMENT:I = 0x7

.field public static final TYPE_GREETING:I = 0xd

.field public static final TYPE_LIKE:I = 0x5

.field public static final TYPE_OFFICIAL:I = 0xb

.field public static final TYPE_REQUEST:I = 0x3


# instance fields
.field private displayTitle:Ljava/lang/String;

.field private iconId:I

.field private show:Z

.field private titleId:I

.field private type:I

.field private unreadNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->show:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/guochao/faceshow/aaspring/beans/NotificationItem;)I
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->show:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->unreadNumber:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-boolean v2, p1, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->show:Z

    if-eqz v2, :cond_1

    iget v1, p1, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->unreadNumber:I

    :cond_1
    sub-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->compareTo(Lcom/guochao/faceshow/aaspring/beans/NotificationItem;)I

    move-result p1

    return p1
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->iconId:I

    return v0
.end method

.method public getTitleId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->titleId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->type:I

    return v0
.end method

.method public getUnreadNumber()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->unreadNumber:I

    return v0
.end method

.method public isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->show:Z

    return v0
.end method

.method public setDisplayTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->displayTitle:Ljava/lang/String;

    return-void
.end method

.method public setIconId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->iconId:I

    return-void
.end method

.method public setShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->show:Z

    return-void
.end method

.method public setTitleId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->titleId:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->type:I

    return-void
.end method

.method public setUnreadNumber(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/NotificationItem;->unreadNumber:I

    return-void
.end method
