.class Lg0/m$c;
.super Lg0/c;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg0/c<",
        "Lg0/m$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg0/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lg0/l;
    .locals 1

    invoke-virtual {p0}, Lg0/m$c;->d()Lg0/m$b;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lg0/m$b;
    .locals 1

    new-instance v0, Lg0/m$b;

    invoke-direct {v0, p0}, Lg0/m$b;-><init>(Lg0/m$c;)V

    return-object v0
.end method

.method public e(ILandroid/graphics/Bitmap$Config;)Lg0/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/c;->b()Lg0/l;

    move-result-object v0

    check-cast v0, Lg0/m$b;

    .line 2
    invoke-virtual {v0, p1, p2}, Lg0/m$b;->b(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
