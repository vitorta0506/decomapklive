.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/holder/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/h;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/f;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/d;->a:Lcom/airbnb/lottie/f;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/holder/d;->a:Lcom/airbnb/lottie/f;

    check-cast p1, Lcom/airbnb/lottie/d;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/holder/F2fSpeechTextHolder;->d(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/d;)V

    return-void
.end method
