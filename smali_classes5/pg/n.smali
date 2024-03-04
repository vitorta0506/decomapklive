.class public final Lpg/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lpg/o<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final a:Lpg/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpg/n;

    invoke-direct {v0}, Lpg/n;-><init>()V

    sput-object v0, Lpg/n;->a:Lpg/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lpg/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lpg/n<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Lpg/n;->a:Lpg/n;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
