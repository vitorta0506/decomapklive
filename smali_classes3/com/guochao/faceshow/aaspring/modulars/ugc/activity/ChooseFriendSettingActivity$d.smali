.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;->loadData(I)V

    return-void
.end method
