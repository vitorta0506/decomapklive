.class final Lig/m0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final a:Lkg/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lig/m0;->a(Z)Lkg/k;

    move-result-object v0

    sput-object v0, Lig/m0$c;->a:Lkg/k;

    return-void
.end method

.method static synthetic a()Lkg/k;
    .locals 1

    sget-object v0, Lig/m0$c;->a:Lkg/k;

    return-object v0
.end method
