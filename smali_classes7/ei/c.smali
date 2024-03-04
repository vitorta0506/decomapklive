.class public abstract Lei/c;
.super Lio/reactivex/k;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "TT;>;",
        "Lio/reactivex/r<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lei/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lei/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lei/b;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lei/b;

    invoke-direct {v0, p0}, Lei/b;-><init>(Lei/c;)V

    return-object v0
.end method
