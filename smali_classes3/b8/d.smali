.class public interface abstract Lb8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb8/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lb8/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lb8/a;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Lb8/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract d(Lb8/a;ZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZZ)V"
        }
    .end annotation
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract registerOnUserChangedListener(Lb8/d$a;)V
.end method

.method public abstract unregisterOnUserChangedListener(Lb8/d$a;)V
.end method
