.class public Lkk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lkk/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkk/a$a;

    invoke-direct {v0}, Lkk/a$a;-><init>()V

    sput-object v0, Lkk/a$a;->a:Lkk/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lkk/a$a;
    .locals 1

    sget-object v0, Lkk/a$a;->a:Lkk/a$a;

    return-object v0
.end method
