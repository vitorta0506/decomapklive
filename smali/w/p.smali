.class public Lw/p;
.super Lw/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lw/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lw/o;

    invoke-direct {v0}, Lw/o;-><init>()V

    return-object v0
.end method

.method public b()Lw/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lw/o;

    invoke-direct {v0}, Lw/o;-><init>()V

    return-object v0
.end method
