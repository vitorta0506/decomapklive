.class public final synthetic Lm5/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/b;


# static fields
.field public static final synthetic a:Lm5/l0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lm5/l0;

    invoke-direct {v0}, Lm5/l0;-><init>()V

    sput-object v0, Lm5/l0;->a:Lm5/l0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
