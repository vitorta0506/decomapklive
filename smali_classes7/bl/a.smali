.class public Lbl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Luk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbl/a;->b:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, Luk/c;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbl/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbl/a;->a:Ljava/lang/String;

    return-void
.end method
