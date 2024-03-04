.class public final Lgh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lgh/a;


# instance fields
.field private final a:Lgh/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgh/a;

    .line 2
    invoke-static {}, Lgh/e;->a()Lgh/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lgh/a;-><init>(Lgh/e;)V

    sput-object v0, Lgh/a;->b:Lgh/a;

    return-void
.end method

.method public constructor <init>(Lgh/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgh/a;->a:Lgh/e;

    return-void
.end method

.method public static a()Lgh/a;
    .locals 1

    sget-object v0, Lgh/a;->b:Lgh/a;

    return-object v0
.end method
