.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/date/fragment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/a;->a:Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/a;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/a;->a:Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/a;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/a;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;ILandroid/view/View;)V

    return-void
.end method
