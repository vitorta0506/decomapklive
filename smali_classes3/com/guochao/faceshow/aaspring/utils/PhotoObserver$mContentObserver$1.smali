.class public final Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$mContentObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/utils/PhotoObserver$mContentObserver$1",
        "Landroid/database/ContentObserver;",
        "onChange",
        "",
        "selfChange",
        "",
        "uri",
        "Landroid/net/Uri;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$mContentObserver$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$mContentObserver$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->access$refreshUri(Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;Landroid/net/Uri;Z)V

    return-void
.end method
