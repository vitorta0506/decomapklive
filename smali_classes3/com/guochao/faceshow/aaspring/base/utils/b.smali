.class public final synthetic Lcom/guochao/faceshow/aaspring/base/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:J

.field public final synthetic c:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/utils/b;->a:Landroid/view/View;

    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/base/utils/b;->b:J

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/utils/b;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/utils/b;->a:Landroid/view/View;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/base/utils/b;->b:J

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/utils/b;->c:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->a(Landroid/view/View;JLandroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
