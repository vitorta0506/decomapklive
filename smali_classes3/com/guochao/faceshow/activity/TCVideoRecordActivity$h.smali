.class Lcom/guochao/faceshow/activity/TCVideoRecordActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$h;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    return-void
.end method
