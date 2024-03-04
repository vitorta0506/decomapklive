.class public abstract Ldagger/android/DaggerFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Ldagger/android/c;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ldagger/android/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldagger/android/a;->c(Landroid/app/Fragment;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method
