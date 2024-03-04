.class abstract Lgh/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgh/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# static fields
.field private static final a:Lgh/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgh/g$a$a;

    invoke-direct {v0}, Lgh/g$a$a;-><init>()V

    sput-object v0, Lgh/g$a;->a:Lgh/g$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lgh/g$a;
    .locals 1

    sget-object v0, Lgh/g$a;->a:Lgh/g$a;

    return-object v0
.end method
