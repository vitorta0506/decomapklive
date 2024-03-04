.class Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/bean/FollowBean;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;Lcom/guochao/faceshow/bean/FollowBean;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;->a:Lcom/guochao/faceshow/bean/FollowBean;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;->a:Lcom/guochao/faceshow/bean/FollowBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/FollowBean;->getStartLivePush()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "user/attention/closeLivePush"

    goto :goto_0

    :cond_0
    const-string p1, "user/attention/openLivePush"

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;->a:Lcom/guochao/faceshow/bean/FollowBean;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$b;->b:I

    invoke-static {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;Ljava/lang/String;Lcom/guochao/faceshow/bean/FollowBean;I)V

    return-void
.end method
