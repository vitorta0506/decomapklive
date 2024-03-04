.class public final Lcom/guochao/faceshow/views/GCIndicatorView$observer$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/GCIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/guochao/faceshow/views/GCIndicatorView$observer$1",
        "Landroid/database/DataSetObserver;",
        "onChanged",
        "",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/views/GCIndicatorView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/GCIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/GCIndicatorView$observer$1;->this$0:Lcom/guochao/faceshow/views/GCIndicatorView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView$observer$1;->this$0:Lcom/guochao/faceshow/views/GCIndicatorView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
