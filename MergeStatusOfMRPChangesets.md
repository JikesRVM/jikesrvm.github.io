---
layout: default 
title: Merge Status of MRP changesets
---

Almost all of the changes in MRP are potentially useful for Jikes RVM. This page lists the merge status for the changesets in MRP.

Commit ids refer to the [codehaus GitHub MRP repository mirror](http://github.com/codehaus/mrp) and not to the one at [Google Code](http://code.google.com/p/metacircular/source/list) (the commit ids are different!).

The first MRP-specific commit is 870e57d18ce7c99e8d8c00b5e0adfe7b2f953280 (Set up trunk directory) from Thu Feb 26 19:20:50 2009 +0000

All MRP commits up until 3037c82141b021c456765806e4fbe6f400846a06 (Remove unnecessary stat from DynamicLibrary.) from Sat Feb 28 00:14:34 2009 +0000 have been processed and entered in the tables below.

## Completely merged Changesets (ordered from earliest to latest MRP commit)

| MRP Commit | Notes | Jikes RVM commits |
| --- | --- | --- |
| [5ff473b86fd7f4144cabd757d3c046ce3f45e42e](https://github.com/codehaus/mrp/commit/5ff473b86fd7f4144cabd757d3c046ce3f45e42e) | x64, bootimageRunner printout cleanup, remove APR. |  [0cf9dbf84e254b2f01f013b233008caea392f507](http://sourceforge.net/p/jikesrvm/code/ci/0cf9dbf84e254b2f01f013b233008caea392f507) (libvm.c SIZE\_OF\_POINTER changes) [2a61778479e8ab168dbe3901b7b823d362086b2b](http://sourceforge.net/p/jikesrvm/code/ci/2a61778479e8ab168dbe3901b7b823d362086b2b/) (bootimage runner printouts) |
| [caa5090e4387f4df056a51194975a78c01cbdcbf](https://github.com/codehaus/mrp/commit/caa5090e4387f4df056a51194975a78c01cbdcbf) | Use SIZE\_OF\_POINTER in libvm.c | [0cf9dbf84e254b2f01f013b233008caea392f507](http://sourceforge.net/p/jikesrvm/code/ci/0cf9dbf84e254b2f01f013b233008caea392f507) |
| [df8d479d65a2e31d768e9555ff6cc58e18290116](https://github.com/codehaus/mrp/commit/df8d479d65a2e31d768e9555ff6cc58e18290116) | Deletion of cmdLine.h, other changes weren't applicable to the RVM at the merge point | [a780429ac46044124ca404482c4c192ee269a3d2](http://sourceforge.net/p/jikesrvm/code/ci/a780429ac46044124ca404482c4c192ee269a3d2) |
| [d19a7989e5fb45e8a4542c6d97f880329a268767](https://github.com/codehaus/mrp/commit/d19a7989e5fb45e8a4542c6d97f880329a268767) | Conversion of constants to offsets, BootImageCompiler changes | [9b73037138c202edf6389c4f7d903079fc2ea620](http://sourceforge.net/p/jikesrvm/code/ci/9b73037138c202edf6389c4f7d903079fc2ea620/) (Conversion of constants to Offsets) [d552b72f1c2b7b2c008b1773356e51784b9596c2](http://sourceforge.net/p/jikesrvm/code/ci/d552b72f1c2b7b2c008b1773356e51784b9596c2/) (GenArch_ia32 changes) [1d3030036a48b5ea2e610ca095ba2821cc47d186](http://sourceforge.net/p/jikesrvm/code/ci/1d3030036a48b5ea2e610ca095ba2821cc47d186/) (Make fields in BootimageCompiler final) [4645d488a5db5f5d52471e415bb9923cb50a3916](http://sourceforge.net/p/jikesrvm/code/ci/4645d488a5db5f5d52471e415bb9923cb50a3916/) (Fail the bootimage build when exceptions are thrown during compilation)|
| [460ec760a1998beb1c3aa26ccc4840298f00876a](https://github.com/codehaus/mrp/commit/460ec760a1998beb1c3aa26ccc4840298f00876a) | 32 bit fix for GenArch_ia32 changes | [d552b72f1c2b7b2c008b1773356e51784b9596c2](http://sourceforge.net/p/jikesrvm/code/ci/d552b72f1c2b7b2c008b1773356e51784b9596c2/) |
| [882a2e7d6ba450262e46ee2119be1e934aa3f0f7](https://github.com/codehaus/mrp/commit/882a2e7d6ba450262e46ee2119be1e934aa3f0f7)  | MRP-1 / [RVM-826](http://xtenlang.atlassian.net/browse/RVM-826) - was merged from MRP without attribution in the commit message | [3624be6f51983f3f385c8031015c548c1cef006a](http://sourceforge.net/p/jikesrvm/code/ci/3624be6f51983f3f385c8031015c548c1cef006a) |
| [babc48ae94546e868dc5ca3910f563c2e61989f9](https://github.com/codehaus/mrp/commit/babc48ae94546e868dc5ca3910f563c2e61989f9) | MRP-9 / [RVM-829](https://xtenlang.atlassian.net/browse/RVM-829) | [7cca607624dd44af0385a5dbe3d291399a7b630f](http://docs.codehaus.org/sourceforge.net/p/jikesrvm/code/ci/7cca607624dd44af0385a5dbe3d291399a7b630f) |
| [f04f14178f9a5114dd61f505af0d8addf8b2a7b4](https://github.com/codehaus/mrp/commit/f04f14178f9a5114dd61f505af0d8addf8b2a7b4) | lcmp tests. | [018fa1e241338ef29b55ae4eac9ad1470d25d8e9](http://sourceforge.net/p/jikesrvm/code/ci/018fa1e241338ef29b55ae4eac9ad1470d25d8e9) |
| [6c8a8f532b7cdc95528e9b553182e87d5b8f0e1f](https://github.com/codehaus/mrp/commit/6c8a8f532b7cdc95528e9b553182e87d5b8f0e1f) | x64 array access fixes for normal Java arrays | [e41eb8c941ab4149f7b0ea67dd5c4528a1d0b681](http://sourceforge.net/p/jikesrvm/code/ci/e41eb8c941ab4149f7b0ea67dd5c4528a1d0b681/) |
| [e06fa2993725be95515596cfcb74c7b007b2561e](https://github.com/codehaus/mrp/commit/e06fa2993725be95515596cfcb74c7b007b2561e) | x64 array access fixes for unboxed arrays | [e41eb8c941ab4149f7b0ea67dd5c4528a1d0b681](http://sourceforge.net/p/jikesrvm/code/ci/e41eb8c941ab4149f7b0ea67dd5c4528a1d0b681/) |
| [8ce02705d334b17db45040b65a53de1d800fc9b6](https://github.com/codehaus/mrp/commit/8ce02705d334b17db45040b65a53de1d800fc9b6) | x64 fixes for MultianewArrayhelper | [659c74ed89b3a513dfbd0b78b0794660c2fc449f](http://sourceforge.net/p/jikesrvm/code/ci/659c74ed89b3a513dfbd0b78b0794660c2fc449f) |
| [94c7f2a2e23f2ad46154b9e59f2c49d003c68c20](https://github.com/codehaus/mrp/commit/94c7f2a2e23f2ad46154b9e59f2c49d003c68c20) [66a49cd15abaec776c56855262acf3bed845e652](https://github.com/codehaus/mrp/commit/66a49cd15abaec776c56855262acf3bed845e652) |  [RVM-584](http://xtenlang.atlassian.net/RVM-584) (Automation for gathering compiler DNA). The changes to CompilerDNA.java were not merged because they do not apply to the Jikes RVM. | [a987aeb1642fdd74316ad41043b15c8be2f305ec/](http://sourceforge.net/p/jikesrvm/code/ci/a987aeb1642fdd74316ad41043b15c8be2f305ec/) |
| [08bca9db0ec0c799bff0a4d66b51ef5645076c13](https://github.com/codehaus/mrp/commit/08bca9db0ec0c799bff0a4d66b51ef5645076c13) [769ae73848fa2186266e0b6e99fb3c0f82cc86eb](https://github.com/codehaus/mrp/commit/769ae73848fa2186266e0b6e99fb3c0f82cc86eb) | RVM-95 / ECJ removal | [25912bfb880e8f8c704677600b15641a78936af0](http://sourceforge.net/p/jikesrvm/code/ci/25912bfb880e8f8c704677600b15641a78936af0/) |
| [2a19e545c4c1d4ec53bbdb6ac649df6da78f7466](https://github.com/codehaus/mrp/commit/2a19e545c4c1d4ec53bbdb6ac649df6da78f7466) | Refine assertion in BuildBB | [c28a46defa821436c4df7aaec893e17769962c77](http://sourceforge.net/p/jikesrvm/code/ci/c28a46defa821436c4df7aaec893e17769962c77) |

## Changesets that are only partially merged and still in progress (unordered)

| MRP Commit | Notes | Jikes RVM commits |
| --- | --- | --- |
| [90be4471c1650641b02b3a350063778484d27a3c](https://github.com/codehaus/mrp/commit/90be4471c1650641b02b3a350063778484d27a3c) | Only moving of contents of cmdLine.h was merged | [a780429ac46044124ca404482c4c192ee269a3d2](http://sourceforge.net/p/jikesrvm/code/ci/a780429ac46044124ca404482c4c192ee269a3d2) |
| [d38420e7fea6aac84f7300d6f089f3292be3adf1](https://github.com/codehaus/mrp/commit/d38420e7fea6aac84f7300d6f089f3292be3adf1) | All x64 changes were merged. Additional fixes by Da Feng are also contained in the commit. The OProfile changes have not been merged. | [a4764e3f72b11246980bdf74045d8d8aec6156fe](http://sourceforge.net/p/jikesrvm/code/ci/a4764e3f72b11246980bdf74045d8d8aec6156fe) (OutOfLineMachineCode, ThreadLocalState) |
| [08b031163d63875a14ca8e7f29883284451d0cb8](https://github.com/codehaus/mrp/commit/08b031163d63875a14ca8e7f29883284451d0cb8) | x64 | [a7626555f445453afef1e6287ea155f5b7ecc6f3](http://sourceforge.net/p/jikesrvm/code/ci/a7626555f445453afef1e6287ea155f5b7ecc6f3), [d5546992fb33412aa55116549daf42a2ccfc299d](http://sourceforge.net/p/jikesrvm/code/ci/d5546992fb33412aa55116549daf42a2ccfc299d) |
| [be94f3408ac0f07b396f9f040f51f4576085ccd2](https://github.com/codehaus/mrp/commit/be94f3408ac0f07b396f9f040f51f4576085ccd2) | x64 | [44411cd32a01fd0f8caa911ebcb5fd3cc28b9887](http://sourceforge.net/p/jikesrvm/code/ci/44411cd32a01fd0f8caa911ebcb5fd3cc28b9887) (StackManager) |
| [08b031163d63875a14ca8e7f29883284451d0cb8](https://github.com/codehaus/mrp/commit/08b031163d63875a14ca8e7f29883284451d0cb8) | x64 | [44411cd32a01fd0f8caa911ebcb5fd3cc28b9887](http://sourceforge.net/p/jikesrvm/code/ci/44411cd32a01fd0f8caa911ebcb5fd3cc28b9887) (StackManager) |
| &nbsp; | &nbsp; | &nbsp; |
| [dce47314b403ce7c095ec1625b8a5b2492c207b4](https://github.com/codehaus/mrp/commit/dce47314b403ce7c095ec1625b8a5b2492c207b4) | x64. Used Da Feng's fix for the IR changes; rest still unprocessed. | [ecc7562406fd38bce74c5874999a24a861b163b0](http://sourceforge.net/p/jikesrvm/code/ci/ecc7562406fd38bce74c5874999a24a861b163b0) (Da Feng's fix) |
| [33f0837b0caa4dc280d956d0721e1bf19e108745](https://github.com/codehaus/mrp/commit/33f0837b0caa4dc280d956d0721e1bf19e108745) | MRP-23 | [6ea4feda95a52059d46a12be721047bf6a95be09](http://sourceforge.net/p/jikesrvm/code/ci/6ea4feda95a52059d46a12be721047bf6a95be09) (replacement of "new AddressConstant(..)" with "IRTools.AC(..)") |
| [92409c3bd94d2ff6500a7aaec912464dbc7b8583](https://github.com/codehaus/mrp/commit/92409c3bd94d2ff6500a7aaec912464dbc7b8583) | BytecodeConstants changes are merged; removal of fullyBootedVM is merged; all other changes are not yet merged | [65bd754ba3473e8ddf91d41b45a0d12da088b92b](http://sourceforge.net/p/jikesrvm/code/ci/65bd754ba3473e8ddf91d41b45a0d12da088b92b) (BytecodeConstants changes)
[2880b01ba1e6a62c4f1172cef066f2a7372c6ba9](http://sourceforge.net/p/jikesrvm/code/ci/2880b01ba1e6a62c4f1172cef066f2a7372c6ba9) (removal of fullyBootedVM) |
| [071eb5df19f0d33ce99a7cf9266ddf7a27af8bcf](https://github.com/codehaus/mrp/commit/071eb5df19f0d33ce99a7cf9266ddf7a27af8bcf) | Some parts of the printf fixes have been merged | [a61c4c64147994789c25fba900c5e2c41029df4c (parts of the printf changes)](http://sourceforge.net/p/jikesrvm/code/ci/a61c4c64147994789c25fba900c5e2c41029df4c/) |
| [792bfdcfa96368780e982119081950c00b97fb58](https://github.com/codehaus/mrp/commit/792bfdcfa96368780e982119081950c00b97fb58) | Only changes to use arg path instead of arg value have been merged | [8aea28a807abdda44c4a3c12258431a612406874](http://sourceforge.net/p/jikesrvm/code/ci/8aea28a807abdda44c4a3c12258431a612406874/) (use &lt;arg path&gt; instead of &lt;arg value&gt;) |
| [3d257cd17d156d58273b7b2f5595ad540317c8ec](https://github.com/codehaus/mrp/commit/3d257cd17d156d58273b7b2f5595ad540317c8ec) | Only the primitive array store helper changes were merged | [b7eaa05705dccf494e098bf6d61b092b26adbbda](http://sourceforge.net/p/jikesrvm/code/ci/b7eaa05705dccf494e098bf6d61b092b26adbbda/) |
| [8780f9f0896aef463c179181587e0a9ef95943f9](https://github.com/codehaus/mrp/commit/8780f9f0896aef463c179181587e0a9ef95943f9) | Only the x64 BaselineMagic fixes were merged. In particular, JTOC changes were not merged. |  [109610b5123fcc20e96c7b6b3b2cea24f7e901f6](http://sourceforge.net/p/jikesrvm/code/ci/109610b5123fcc20e96c7b6b3b2cea24f7e901f6/) (generator name changes) [82531721bff3b0cde4e6a74ab2d9e4a763a5df8](http://sourceforge.net/p/jikesrvm/code/ci/382531721bff3b0cde4e6a74ab2d9e4a763a5df8/) (magic bug fixes) [1b6ed7221b7a8970ee968be36d5dba08c0d047a8](http://sourceforge.net/p/jikesrvm/code/ci/1b6ed7221b7a8970ee968be36d5dba08c0d047a8) (fix for emit_unresolved_getstatic) |

Changesets that need reviewing

| MRP Commit | Reason for review |
| --- | --- |
| [0486d1bc63283d31672de8a63d4b67c6f23d7f98](https://github.com/codehaus/mrp/commit/0486d1bc63283d31672de8a63d4b67c6f23d7f98) | Cheap null checks were broken in the Jikes RVM. They caused an intermittent pmd crash and were therefore removed by Daniel Frampton in commit [235ebbc823625da920485c8ed0cc47d52ba7cd4a](http://sourceforge.net/p/jikesrvm/code/ci/235ebbc823625da920485c8ed0cc47d52ba7cd4a). A thorough review of the MRP commit and a reliable test case would be beneficial. |

## Changesets that will not be merged (ordered from earliest to latest MRP commit)

| MRP Commit | Reasoning |
| --- | --- |
| [870e57d18ce7c99e8d8c00b5e0adfe7b2f953280](https://github.com/codehaus/mrp/commit/870e57d18ce7c99e8d8c00b5e0adfe7b2f953280) | not useful: was reverted in 61c36f01e1009f7d2a5e8b0f5e41a68fcb6abea0 |
| [61c36f01e1009f7d2a5e8b0f5e41a68fcb6abea0](https://github.com/codehaus/mrp/commit/61c36f01e1009f7d2a5e8b0f5e41a68fcb6abea0) | not useful: reverts 870e57d18ce7c99e8d8c00b5e0adfe7b2f953280 |
| [ca2a03dd41b9b662ab4feed0c4952552265aab79](https://github.com/codehaus/mrp/commit/ca2a03dd41b9b662ab4feed0c4952552265aab79)<br>[ae351813a10fdc8723a3866b3ea74558646ad95b](https://github.com/codehaus/mrp/commit/ae351813a10fdc8723a3866b3ea74558646ad95b)<br>[3cf67066310e66f75d371de1942563332592415e](https://github.com/codehaus/mrp/commit/3cf67066310e66f75d371de1942563332592415e) | Classpath 0.98 merge; done independently in the Jikes RVM |
| [6801f6047342f494bc0685b605ac9289a60d62c0](https://github.com/codehaus/mrp/commit/6801f6047342f494bc0685b605ac9289a60d62c0) <br>[94a8f7b6544222f5db8decc752c53d8cc4ef4d5c](https://github.com/codehaus/mrp/commit/94a8f7b6544222f5db8decc752c53d8cc4ef4d5c)  <br>[492547e056df1a0cb255eec5b069f2a5d553f9bc](https://github.com/codehaus/mrp/commit/492547e056df1a0cb255eec5b069f2a5d553f9bc) <br>[3001384d9b46932148239cf35232a1f72ce5be84](https://github.com/codehaus/mrp/commit/3001384d9b46932148239cf35232a1f72ce5be84) | Apache Harmony fixes |
| [ec9018cbda6fee0d6d22ecda95b4ce049dc776e6](https://github.com/codehaus/mrp/commit/ec9018cbda6fee0d6d22ecda95b4ce049dc776e6) | IIRC fixed independently in the Jikes RVM |

## Unprocessed Changesets

Everything else has either not been merged yet or nobody has filled out the tables above.

