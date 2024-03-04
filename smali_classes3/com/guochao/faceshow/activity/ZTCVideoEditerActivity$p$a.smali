.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p$a;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p$a;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->m1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
