.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/s;->a:Landroid/content/Context;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/utils/s;->b:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/s;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/s;->a:Landroid/content/Context;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/s;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/s;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
