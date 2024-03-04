.class public final synthetic Lf6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/e;


# static fields
.field public static final synthetic a:Lf6/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lf6/c;

    invoke-direct {v0}, Lf6/c;-><init>()V

    sput-object v0, Lf6/c;->a:Lf6/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ld6/f;

    invoke-static {p1, p2}, Lf6/d;->c(Ljava/lang/String;Ld6/f;)V

    return-void
.end method
