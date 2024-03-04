.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/r;->a:Landroid/content/Context;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/utils/r;->b:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/r;->c:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/utils/r;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/r;->a:Landroid/content/Context;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/r;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/r;->c:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/r;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->b(Landroid/content/Context;ILjava/lang/CharSequence;I)V

    return-void
.end method
