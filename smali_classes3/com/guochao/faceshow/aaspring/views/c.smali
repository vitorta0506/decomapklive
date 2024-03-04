.class public final synthetic Lcom/guochao/faceshow/aaspring/views/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/c;->a:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/c;->b:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/c;->a:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/c;->b:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->a(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V

    return-void
.end method
