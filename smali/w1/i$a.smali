.class final Lw1/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lw1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw1/i;

    invoke-direct {v0}, Lw1/i;-><init>()V

    sput-object v0, Lw1/i$a;->a:Lw1/i;

    return-void
.end method

.method static synthetic a()Lw1/i;
    .locals 1

    sget-object v0, Lw1/i$a;->a:Lw1/i;

    return-object v0
.end method
