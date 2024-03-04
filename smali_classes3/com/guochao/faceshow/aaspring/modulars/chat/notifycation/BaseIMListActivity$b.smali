.class public abstract Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->a:Landroid/widget/ImageView;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->b:Landroid/widget/ImageView;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->a(Ljava/lang/Throwable;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity$b;->b(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
