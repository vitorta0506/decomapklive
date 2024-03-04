.class public abstract Lcom/guochao/faceshow/aaspring/base/http/callback/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ln7/d;->c(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ln7/d;->a(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCompleted()V
.end method

.method public abstract onError(Lg7/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
