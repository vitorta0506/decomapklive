.class final Lig/h0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/g0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public b()Lig/g0;
    .locals 1

    invoke-static {}, Lig/h0;->f()Lig/g0;

    move-result-object v0

    return-object v0
.end method
