.class Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->tvClose:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->e0(ILjava/lang/String;)V

    return-void
.end method
