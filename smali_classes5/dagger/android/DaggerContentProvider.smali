.class public abstract Ldagger/android/DaggerContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-static {p0}, Ldagger/android/a;->f(Landroid/content/ContentProvider;)V

    const/4 v0, 0x1

    return v0
.end method
