package androidx.core.animation;

import android.animation.Animator;
import androidx.annotation.RequiresApi;
import com.facebook.internal.NativeProtocol;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u001a¤\u0001\u0010\u0000\u001a\u00020\u0001*\u00020\u00022#\b\u0006\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00042#\b\u0006\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00042#\b\u0006\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00042#\b\u0006\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0086\bø\u0001\u0000\u001aZ\u0010\f\u001a\u00020\r*\u00020\u00022#\b\u0006\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00042#\b\u0006\u0010\u000f\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0087\bø\u0001\u0000\u001a5\u0010\u0010\u001a\u00020\u0001*\u00020\u00022#\b\u0004\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0086\bø\u0001\u0000\u001a5\u0010\u0012\u001a\u00020\u0001*\u00020\u00022#\b\u0004\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0086\bø\u0001\u0000\u001a5\u0010\u0013\u001a\u00020\r*\u00020\u00022#\b\u0004\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0087\bø\u0001\u0000\u001a5\u0010\u0014\u001a\u00020\u0001*\u00020\u00022#\b\u0004\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0086\bø\u0001\u0000\u001a5\u0010\u0015\u001a\u00020\r*\u00020\u00022#\b\u0004\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0087\bø\u0001\u0000\u001a5\u0010\u0016\u001a\u00020\u0001*\u00020\u00022#\b\u0004\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0017"}, d2 = {"addListener", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", "onEnd", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "animator", "", "onStart", "onCancel", "onRepeat", "addPauseListener", "Landroid/animation/Animator$AnimatorPauseListener;", "onResume", "onPause", "doOnCancel", NativeProtocol.WEB_DIALOG_ACTION, "doOnEnd", "doOnPause", "doOnRepeat", "doOnResume", "doOnStart", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AnimatorKt {
    @NotNull
    public static final Animator.AnimatorListener addListener(@NotNull Animator animator, @NotNull Function1<? super Animator, Unit> onEnd, @NotNull Function1<? super Animator, Unit> onStart, @NotNull Function1<? super Animator, Unit> onCancel, @NotNull Function1<? super Animator, Unit> onRepeat) {
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(onEnd, "onEnd");
        Intrinsics.checkNotNullParameter(onStart, "onStart");
        Intrinsics.checkNotNullParameter(onCancel, "onCancel");
        Intrinsics.checkNotNullParameter(onRepeat, "onRepeat");
        AnimatorKt$addListener$listener$1 animatorKt$addListener$listener$1 = new AnimatorKt$addListener$listener$1(onRepeat, onEnd, onCancel, onStart);
        animator.addListener(animatorKt$addListener$listener$1);
        return animatorKt$addListener$listener$1;
    }

    public static /* synthetic */ Animator.AnimatorListener addListener$default(Animator animator, Function1 onEnd, Function1 onStart, Function1 onCancel, Function1 onRepeat, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            onEnd = new Function1<Animator, Unit>() { // from class: androidx.core.animation.AnimatorKt$addListener$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Animator animator2) {
                    invoke2(animator2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Animator it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
        }
        if ((i9 & 2) != 0) {
            onStart = new Function1<Animator, Unit>() { // from class: androidx.core.animation.AnimatorKt$addListener$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Animator animator2) {
                    invoke2(animator2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Animator it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
        }
        if ((i9 & 4) != 0) {
            onCancel = new Function1<Animator, Unit>() { // from class: androidx.core.animation.AnimatorKt$addListener$3
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Animator animator2) {
                    invoke2(animator2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Animator it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
        }
        if ((i9 & 8) != 0) {
            onRepeat = new Function1<Animator, Unit>() { // from class: androidx.core.animation.AnimatorKt$addListener$4
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Animator animator2) {
                    invoke2(animator2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Animator it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
        }
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(onEnd, "onEnd");
        Intrinsics.checkNotNullParameter(onStart, "onStart");
        Intrinsics.checkNotNullParameter(onCancel, "onCancel");
        Intrinsics.checkNotNullParameter(onRepeat, "onRepeat");
        AnimatorKt$addListener$listener$1 animatorKt$addListener$listener$1 = new AnimatorKt$addListener$listener$1(onRepeat, onEnd, onCancel, onStart);
        animator.addListener(animatorKt$addListener$listener$1);
        return animatorKt$addListener$listener$1;
    }

    @RequiresApi(19)
    @NotNull
    public static final Animator.AnimatorPauseListener addPauseListener(@NotNull Animator animator, @NotNull Function1<? super Animator, Unit> onResume, @NotNull Function1<? super Animator, Unit> onPause) {
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(onResume, "onResume");
        Intrinsics.checkNotNullParameter(onPause, "onPause");
        AnimatorKt$addPauseListener$listener$1 animatorKt$addPauseListener$listener$1 = new AnimatorKt$addPauseListener$listener$1(onPause, onResume);
        animator.addPauseListener(animatorKt$addPauseListener$listener$1);
        return animatorKt$addPauseListener$listener$1;
    }

    public static /* synthetic */ Animator.AnimatorPauseListener addPauseListener$default(Animator animator, Function1 onResume, Function1 onPause, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            onResume = new Function1<Animator, Unit>() { // from class: androidx.core.animation.AnimatorKt$addPauseListener$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Animator animator2) {
                    invoke2(animator2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Animator it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
        }
        if ((i9 & 2) != 0) {
            onPause = new Function1<Animator, Unit>() { // from class: androidx.core.animation.AnimatorKt$addPauseListener$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Animator animator2) {
                    invoke2(animator2);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Animator it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }
            };
        }
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(onResume, "onResume");
        Intrinsics.checkNotNullParameter(onPause, "onPause");
        AnimatorKt$addPauseListener$listener$1 animatorKt$addPauseListener$listener$1 = new AnimatorKt$addPauseListener$listener$1(onPause, onResume);
        animator.addPauseListener(animatorKt$addPauseListener$listener$1);
        return animatorKt$addPauseListener$listener$1;
    }

    @NotNull
    public static final Animator.AnimatorListener doOnCancel(@NotNull Animator animator, @NotNull final Function1<? super Animator, Unit> action) {
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: androidx.core.animation.AnimatorKt$doOnCancel$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
                Function1.this.invoke(animator2);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    @NotNull
    public static final Animator.AnimatorListener doOnEnd(@NotNull Animator animator, @NotNull final Function1<? super Animator, Unit> action) {
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: androidx.core.animation.AnimatorKt$doOnEnd$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
                Function1.this.invoke(animator2);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    @RequiresApi(19)
    @NotNull
    public static final Animator.AnimatorPauseListener doOnPause(@NotNull Animator animator, @NotNull final Function1<? super Animator, Unit> action) {
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Animator.AnimatorPauseListener animatorPauseListener = new Animator.AnimatorPauseListener() { // from class: androidx.core.animation.AnimatorKt$doOnPause$$inlined$addPauseListener$default$1
            @Override // android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
                Function1.this.invoke(animator2);
            }

            @Override // android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }
        };
        animator.addPauseListener(animatorPauseListener);
        return animatorPauseListener;
    }

    @NotNull
    public static final Animator.AnimatorListener doOnRepeat(@NotNull Animator animator, @NotNull final Function1<? super Animator, Unit> action) {
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: androidx.core.animation.AnimatorKt$doOnRepeat$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
                Function1.this.invoke(animator2);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }

    @RequiresApi(19)
    @NotNull
    public static final Animator.AnimatorPauseListener doOnResume(@NotNull Animator animator, @NotNull final Function1<? super Animator, Unit> action) {
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Animator.AnimatorPauseListener animatorPauseListener = new Animator.AnimatorPauseListener() { // from class: androidx.core.animation.AnimatorKt$doOnResume$$inlined$addPauseListener$default$1
            @Override // android.animation.Animator.AnimatorPauseListener
            public void onAnimationPause(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorPauseListener
            public void onAnimationResume(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
                Function1.this.invoke(animator2);
            }
        };
        animator.addPauseListener(animatorPauseListener);
        return animatorPauseListener;
    }

    @NotNull
    public static final Animator.AnimatorListener doOnStart(@NotNull Animator animator, @NotNull final Function1<? super Animator, Unit> action) {
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        Animator.AnimatorListener animatorListener = new Animator.AnimatorListener() { // from class: androidx.core.animation.AnimatorKt$doOnStart$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator2) {
                Intrinsics.checkNotNullParameter(animator2, "animator");
                Function1.this.invoke(animator2);
            }
        };
        animator.addListener(animatorListener);
        return animatorListener;
    }
}
