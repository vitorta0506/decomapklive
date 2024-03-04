.class public final synthetic Lcom/guochao/faceshow/aaspring/utils/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/n;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/n;->b:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/n;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/n;->b:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->e(Lkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    return-void
.end method
