.class Lcom/guochao/faceshow/utils/Tools$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/Tools;->addBlackList(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$identify:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/Tools$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/Tools$1;->val$identify:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/utils/Tools$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/guochao/faceshow/utils/Tools$1;->val$identify:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/Tools;->access$000(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
