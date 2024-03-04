.class abstract Lgh/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lgh/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgh/f$a;

    invoke-direct {v0}, Lgh/f$a;-><init>()V

    sput-object v0, Lgh/f;->a:Lgh/f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lgh/f;
    .locals 1

    sget-object v0, Lgh/f;->a:Lgh/f;

    return-object v0
.end method
