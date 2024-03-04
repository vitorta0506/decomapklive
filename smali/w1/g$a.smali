.class final Lw1/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lw1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw1/g;

    invoke-direct {v0}, Lw1/g;-><init>()V

    sput-object v0, Lw1/g$a;->a:Lw1/g;

    return-void
.end method

.method static synthetic a()Lw1/g;
    .locals 1

    sget-object v0, Lw1/g$a;->a:Lw1/g;

    return-object v0
.end method
