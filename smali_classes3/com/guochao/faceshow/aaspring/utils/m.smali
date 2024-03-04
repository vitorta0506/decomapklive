.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/m;->a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/m;->b:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/m;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/m;->a:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/m;->b:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/m;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->j(Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
