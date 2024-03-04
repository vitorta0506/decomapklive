.class Lcom/guochao/faceshow/activity/MineCenterSettingActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$f;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "makeFriend"

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$f;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->b0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$f;->a:Lcom/guochao/faceshow/activity/MineCenterSettingActivity;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->b0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
