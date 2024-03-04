.class public final Lsg/c;
.super Lsg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsg/b<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lsg/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsg/c;

    invoke-direct {v0}, Lsg/c;-><init>()V

    sput-object v0, Lsg/c;->d:Lsg/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsg/b;-><init>()V

    return-void
.end method
