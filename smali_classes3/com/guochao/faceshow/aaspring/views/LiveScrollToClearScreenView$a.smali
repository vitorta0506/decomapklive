.class public Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;->a:Landroid/view/View;

    return-object v0
.end method
